package com.facebook;

import android.content.Intent;
import android.support.v4.content.l;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ProfileManager {
    static final String ACTION_CURRENT_PROFILE_CHANGED = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED";
    static final String EXTRA_NEW_PROFILE = "com.facebook.sdk.EXTRA_NEW_PROFILE";
    static final String EXTRA_OLD_PROFILE = "com.facebook.sdk.EXTRA_OLD_PROFILE";
    private static volatile ProfileManager instance;
    private Profile currentProfile;
    private final l localBroadcastManager;
    private final ProfileCache profileCache;

    ProfileManager(l lVar, ProfileCache profileCache) {
        Validate.notNull(lVar, "localBroadcastManager");
        Validate.notNull(profileCache, "profileCache");
        this.localBroadcastManager = lVar;
        this.profileCache = profileCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ProfileManager getInstance() {
        if (instance == null) {
            synchronized (ProfileManager.class) {
                if (instance == null) {
                    instance = new ProfileManager(l.a(FacebookSdk.getApplicationContext()), new ProfileCache());
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Profile getCurrentProfile() {
        return this.currentProfile;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean loadCurrentProfile() {
        Profile load = this.profileCache.load();
        if (load != null) {
            setCurrentProfile(load, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentProfile(Profile profile) {
        setCurrentProfile(profile, true);
    }

    private void setCurrentProfile(Profile profile, boolean z) {
        Profile profile2 = this.currentProfile;
        this.currentProfile = profile;
        if (z) {
            if (profile != null) {
                this.profileCache.save(profile);
            } else {
                this.profileCache.clear();
            }
        }
        if (!Utility.areObjectsEqual(profile2, profile)) {
            sendCurrentProfileChangedBroadcast(profile2, profile);
        }
    }

    private void sendCurrentProfileChangedBroadcast(Profile profile, Profile profile2) {
        Intent intent = new Intent(ACTION_CURRENT_PROFILE_CHANGED);
        intent.putExtra(EXTRA_OLD_PROFILE, profile);
        intent.putExtra(EXTRA_NEW_PROFILE, profile2);
        this.localBroadcastManager.a(intent);
    }
}
