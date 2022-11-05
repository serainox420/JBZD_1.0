.class public Lcom/loopme/video360/MD360DirectorFactory;
.super Ljava/lang/Object;
.source "MD360DirectorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDirector()Lcom/loopme/video360/MD360Director;
    .locals 1

    .prologue
    .line 5
    invoke-static {}, Lcom/loopme/video360/MD360Director;->builder()Lcom/loopme/video360/MD360Director$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/video360/MD360Director$Builder;->build()Lcom/loopme/video360/MD360Director;

    move-result-object v0

    return-object v0
.end method
