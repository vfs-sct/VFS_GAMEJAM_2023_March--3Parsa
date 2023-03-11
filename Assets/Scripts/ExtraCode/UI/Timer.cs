using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Timer : MonoBehaviour
{
    public float currentTime = 0f;
    public float startingTime = 270f;   // 4 Minutes

    public GameObject deathObj;
    public GameObject playerObj;

    [SerializeField] Text countdownText;

    // public int scene;   // for scene... Remove when isAlive is present

    void Start()
    {
        currentTime = startingTime;
        countdownText = GetComponent<Text>();
    }

    void Update()
    {
        currentTime -= 1 * Time.deltaTime;
        countdownText.text = "Time: " + currentTime.ToString("0");

        if (currentTime <= 3)
        {
            countdownText.color = Color.red;
        }
        if (currentTime <= 0)
        {
            currentTime = 0;
            countdownText.color = Color.gray;

            playerObj.SetActive(false);
            deathObj.SetActive(true);
        }
    }
}
