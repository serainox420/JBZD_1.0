package com.google.android.gms.games.social;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public interface Social {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface InviteDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface InviteType {
    }

    /* loaded from: classes.dex */
    public interface InviteUpdateResult extends Result {
    }

    /* loaded from: classes.dex */
    public interface LoadInvitesResult extends Releasable, Result {
    }
}
