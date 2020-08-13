import Combine
import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: SignUpViewModel
    // @ObservedObject var viewModel = SignUpViewModel()

    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            TextField("ユーザID", text: viewModel.$binding.id)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("パスワード", text: viewModel.$binding.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("パスワード（確認用）", text: viewModel.$binding.confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Toggle(isOn: viewModel.$binding.agreed) {
                Text("利用規約に同意する")
            }

            Color.clear.frame(height: 16)

            Button(action: { self.viewModel.input.signUpTapped.send(()) }) {
                HStack {
                    Spacer()
                    Text("サインアップ")
                        .padding(.vertical)
                    Spacer()
                }
            }
            .disabled(!viewModel.output.isSignUpEnabled)

            Spacer()
        }
        .padding(.horizontal)
        .padding([.top], 64)
        .alert(isPresented: viewModel.$binding.isCompletionAlertPresented) {
            Alert(title: Text("サインアップ完了"), dismissButton: .cancel(Text("OK")))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: SignUpViewModel())
        // SignUpView()
    }
}
