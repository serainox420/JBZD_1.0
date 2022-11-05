package com.crashlytics.android.beta;

import android.annotation.SuppressLint;
import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.f;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
abstract class AbstractCheckForUpdatesController implements UpdatesController {
    static final long LAST_UPDATE_CHECK_DEFAULT = 0;
    static final String LAST_UPDATE_CHECK_KEY = "last_update_check";
    private static final long MILLIS_PER_SECOND = 1000;
    private Beta beta;
    private f betaSettings;
    private BuildProperties buildProps;
    private Context context;
    private k currentTimeProvider;
    private final AtomicBoolean externallyReady;
    private c httpRequestFactory;
    private IdManager idManager;
    private final AtomicBoolean initialized;
    private long lastCheckTimeMillis;
    private io.fabric.sdk.android.services.c.c preferenceStore;

    public AbstractCheckForUpdatesController() {
        this(false);
    }

    public AbstractCheckForUpdatesController(boolean z) {
        this.initialized = new AtomicBoolean();
        this.lastCheckTimeMillis = 0L;
        this.externallyReady = new AtomicBoolean(z);
    }

    @Override // com.crashlytics.android.beta.UpdatesController
    public void initialize(Context context, Beta beta, IdManager idManager, f fVar, BuildProperties buildProperties, io.fabric.sdk.android.services.c.c cVar, k kVar, c cVar2) {
        this.context = context;
        this.beta = beta;
        this.idManager = idManager;
        this.betaSettings = fVar;
        this.buildProps = buildProperties;
        this.preferenceStore = cVar;
        this.currentTimeProvider = kVar;
        this.httpRequestFactory = cVar2;
        if (signalInitialized()) {
            checkForUpdates();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean signalExternallyReady() {
        this.externallyReady.set(true);
        return this.initialized.get();
    }

    boolean signalInitialized() {
        this.initialized.set(true);
        return this.externallyReady.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"CommitPrefEdits"})
    public void checkForUpdates() {
        synchronized (this.preferenceStore) {
            if (this.preferenceStore.a().contains(LAST_UPDATE_CHECK_KEY)) {
                this.preferenceStore.a(this.preferenceStore.b().remove(LAST_UPDATE_CHECK_KEY));
            }
        }
        long a2 = this.currentTimeProvider.a();
        long j = this.betaSettings.b * MILLIS_PER_SECOND;
        io.fabric.sdk.android.c.h().a(Beta.TAG, "Check for updates delay: " + j);
        io.fabric.sdk.android.c.h().a(Beta.TAG, "Check for updates last check time: " + getLastCheckTimeMillis());
        long lastCheckTimeMillis = j + getLastCheckTimeMillis();
        io.fabric.sdk.android.c.h().a(Beta.TAG, "Check for updates current time: " + a2 + ", next check time: " + lastCheckTimeMillis);
        if (a2 >= lastCheckTimeMillis) {
            try {
                performUpdateCheck();
                return;
            } finally {
                setLastCheckTimeMillis(a2);
            }
        }
        io.fabric.sdk.android.c.h().a(Beta.TAG, "Check for updates next check time was not passed");
    }

    private void performUpdateCheck() {
        io.fabric.sdk.android.c.h().a(Beta.TAG, "Performing update check");
        new CheckForUpdatesRequest(this.beta, this.beta.getOverridenSpiEndpoint(), this.betaSettings.f5716a, this.httpRequestFactory, new CheckForUpdatesResponseTransform()).invoke(new g().a(this.context), this.idManager.i().get(IdManager.DeviceIdentifierType.FONT_TOKEN), this.buildProps);
    }

    void setLastCheckTimeMillis(long j) {
        this.lastCheckTimeMillis = j;
    }

    long getLastCheckTimeMillis() {
        return this.lastCheckTimeMillis;
    }
}
