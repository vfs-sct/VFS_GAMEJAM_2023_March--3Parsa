using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

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
    }

    void Update()
    {
        score.text = "" + poppyScoreText; // display score

        if (scoreReset == true)
        {
            poppyScoreText = 0;
        }
    }
}

// add drug version of this