package com.amazon.device.ads;

import android.util.SparseArray;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.Settings;
import com.amazon.device.ads.ThreadUtils;
/* loaded from: classes.dex */
abstract class StartUpWaiter implements Configuration.ConfigurationListener, Settings.SettingsListener {
    static final int CALLBACK_ON_MAIN_THREAD = 0;
    static final int DEFAULT = 1;
    private static final SparseArray<ThreadUtils.RunnableExecutor> executors = new SparseArray<>();
    private int callbackType = 1;
    private final Configuration configuration;
    private final Settings settings;

    protected abstract void startUpFailed();

    protected abstract void startUpReady();

    static {
        putRunnableExecutor(0, new ThreadUtils.MainThreadScheduler());
        putRunnableExecutor(1, new ThreadUtils.ThreadPoolScheduler());
    }

    public StartUpWaiter(Settings settings, Configuration configuration) {
        this.settings = settings;
        this.configuration = configuration;
    }

    public void start() {
        this.settings.listenForSettings(this);
    }

    public void startAndCallbackOnMainThread() {
        this.callbackType = 0;
        start();
    }

    @Override // com.amazon.device.ads.Settings.SettingsListener
    public void settingsLoaded() {
        this.configuration.queueConfigurationListener(this);
    }

    @Override // com.amazon.device.ads.Configuration.ConfigurationListener
    public void onConfigurationReady() {
        onFinished(new Runnable() { // from class: com.amazon.device.ads.StartUpWaiter.1
            @Override // java.lang.Runnable
            public void run() {
                StartUpWaiter.this.startUpReady();
            }
        });
    }

    @Override // com.amazon.device.ads.Configuration.ConfigurationListener
    public void onConfigurationFailure() {
        onFinished(new Runnable() { // from class: com.amazon.device.ads.StartUpWaiter.2
            @Override // java.lang.Runnable
            public void run() {
                StartUpWaiter.this.startUpFailed();
            }
        });
    }

    private void onFinished(Runnable runnable) {
        getExecutor(this.callbackType).execute(runnable);
    }

    Settings getSettings() {
        return this.settings;
    }

    Configuration getConfiguration() {
        return this.configuration;
    }

    static ThreadUtils.RunnableExecutor getExecutor(int i) {
        return executors.get(i, executors.get(1));
    }

    static void putRunnableExecutor(int i, ThreadUtils.RunnableExecutor runnableExecutor) {
        if (runnableExecutor == null) {
            executors.remove(i);
        } else {
            executors.put(i, runnableExecutor);
        }
    }
}
