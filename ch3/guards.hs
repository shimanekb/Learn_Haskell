bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "Your underweight, eat more!"
	| bmi <= 25.0 = "Looking good!"
	| bmi <= 30.0 = "Your overweight. Let's work out together!"
	| otherwise   = "You're obese. Go see a doctor."
