using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Score : MonoBehaviour
{
    public static int scoreVal = 0;
    public bool scoreReset;

    Text score;

    void Start()
    {
        score = GetComponent<Text>();
    }

    void Update()
    {
        score.text = "Money: $" + scoreVal; // display score

        if (scoreReset == true)  // if bool set true
        {
            scoreVal = 0;   // turn score to 0
        }
    }
}
