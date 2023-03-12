using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Typo but oh well
public class PoppyCollector : MonoBehaviour
{
    /// <summary>
    /// Displays collected Poppies. Attach to UI.
    /// </summary>
    public static int poppyScoreText = 0;
    public bool scoreReset = true;

    Text score;

    void Start()
    {
        score = GetComponent<Text>();

        if (scoreReset == false && poppyScoreText >= 1)
        {
            scoreReset = true;
            poppyScoreText = 0;
        }
    }

    void Update()
    {
        score.text = "" + poppyScoreText; // display score
    }
}