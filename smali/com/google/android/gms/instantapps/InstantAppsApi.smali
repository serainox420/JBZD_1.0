.class public interface abstract Lcom/google/android/gms/instantapps/InstantAppsApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;
    }
.end annotation


# static fields
.field public static final EXTRA_DO_NOT_LAUNCH_INSTANT_APP:Ljava/lang/String; = "com.google.android.gms.instantapps.DO_NOT_LAUNCH_INSTANT_APP"

.field public static final EXTRA_IS_REFERRER_TRUSTED:Ljava/lang/String; = "com.google.android.gms.instantapps.IS_REFERRER_TRUSTED"

.field public static final EXTRA_IS_USER_CONFIRMED_LAUNCH:Ljava/lang/String; = "com.google.android.gms.instantapps.IS_USER_CONFIRMED_LAUNCH"

.field public static final EXTRA_TRUSTED_REFERRER_PKG:Ljava/lang/String; = "com.google.android.gms.instantapps.TRUSTED_REFERRER_PKG"


# virtual methods
.method public abstract getInstantAppIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract getInstantAppLaunchData(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstantAppLaunchData(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/instantapps/LaunchSettings;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/instantapps/LaunchSettings;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract initializeIntentClient(Landroid/content/Context;)Z
.end method
