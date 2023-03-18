using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TimeRemaining : MonoBehaviour
{
    private float currentTime = 0f;
    public float startingTime = 270f;   // 4 Minutes

    public static Text finalTime;

    void Start()
    {
        finalTime = Timer.countdownText;
        finalTime = GetComponent<Text>();
    }
}

