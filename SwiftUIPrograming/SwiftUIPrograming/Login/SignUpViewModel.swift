import Combine
import SwiftUI

final class SignUpViewModel: ViewModelObject {
    final class Input: InputObject {
        /// サインインボタンのタップイベント
        let signUpTapped = PassthroughSubject<Void, Never>()
    }

    final class Binding: BindingObject {
        /// ユーザID
        @Published var id = ""

        /// パスワード
        @Published var password = ""

        /// 確認用パスワード
        @Published var confirmPassword = ""

        /// 利用規約同意フラグ
        @Published var agreed = false

        /// サインアップ完了アラート表示フラグ
        @Published var isCompletionAlertPresented = false
    }

    final class Output: OutputObject {
        /// サインアップボタンの有効フラグ
        @Published fileprivate(set) var isSignUpEnabled = false
    }

    let input: Input

    @BindableObject private(set) var binding: Binding

    let output: Output

    private var cancellables = Set<AnyCancellable>()

    init() {
        let input = Input()
        let binding = Binding()
        let output = Output()

        /// ユーザIDのバリデーション（6文字以上）
        let isIdValid = binding.$id
            .map { $0.count >= 6 }

        /// パスワードのバリデーション（6文字以上）
        let isPasswordValid = binding.$password
            .map { $0.count >= 8 }

        /// 確認用パスワードのバリデーション（`password`と一致）
        let isConfirmPasswordValid = Publishers
            .CombineLatest(
                binding.$password,
                binding.$confirmPassword
        )
            .map { $0.0 == $0.1 }

        /// サインアップボタン有効フラグ
        ///   - すべての入力内容が有効
        ///   - 利用規約に同意
        let isSignUpEnabled = Publishers
            .CombineLatest4(
                isIdValid,
                isPasswordValid,
                isConfirmPasswordValid,
                binding.$agreed
        )
            .map { $0.0 && $0.1 && $0.2 && $0.3 }

        /// サインアップ完了アラートの表示
        let isCompletionAlertPresented = input.signUpTapped
            .flatMap {
                // 実際にはModel層のサインアップ処理を呼び出す
                Just(true)
        }

        // 組み立てたストリームをbinding, outputに反映
        cancellables.formUnion([
            isCompletionAlertPresented.assign(to: \.isCompletionAlertPresented, on: binding),
            isSignUpEnabled.assign(to: \.isSignUpEnabled, on: output)
        ])

        self.input = input
        self.binding = binding
        self.output = output
    }
}
