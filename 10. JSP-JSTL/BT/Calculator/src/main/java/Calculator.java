import java.io.Serializable;

public class Calculator {
    public static float calculator(float firstOperand, char operand, float secondOperand){
        switch (operand){
            case '+':
                return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
                if (secondOperand != 0){
                    return firstOperand / secondOperand;
                }
                else {
                    throw new RuntimeException("Không thể chia cho 0");
                }
            default:
                throw new RuntimeException("Không thể chạy chương trình");
        }

    }
}
