.class public final Lcom/google/android/exoplayer2/drm/c;
.super Ljava/lang/Object;
.source "FrameworkMediaCrypto.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCrypto;


# virtual methods
.method public a()Landroid/media/MediaCrypto;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c;->a:Landroid/media/MediaCrypto;

    return-object v0
.end method
