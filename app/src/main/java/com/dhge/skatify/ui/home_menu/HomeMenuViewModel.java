package com.dhge.skatify.ui.home_menu;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public class HomeMenuViewModel extends ViewModel {
    private LiveData<Integer> clickCount;

    public LiveData<Integer> getClickCount() {
        if (clickCount == null) {
            clickCount = 1;
        }
    }
}
