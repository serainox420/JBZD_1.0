.class public Lio/realm/internal/android/AndroidRealmNotifier;
.super Lio/realm/internal/RealmNotifier;
.source "AndroidRealmNotifier.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/a;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lio/realm/internal/RealmNotifier;-><init>(Lio/realm/internal/SharedRealm;)V

    .line 20
    invoke-interface {p2}, Lio/realm/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
