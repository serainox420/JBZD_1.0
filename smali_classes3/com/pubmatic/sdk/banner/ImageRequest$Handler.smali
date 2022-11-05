.class public interface abstract Lcom/pubmatic/sdk/banner/ImageRequest$Handler;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract imageFailed(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Exception;)V
.end method

.method public abstract imageReceived(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Object;)V
.end method
