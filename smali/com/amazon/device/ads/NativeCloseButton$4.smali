.class Lcom/amazon/device/ads/NativeCloseButton$4;
.super Ljava/lang/Object;
.source "NativeCloseButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/NativeCloseButton;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/NativeCloseButton;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$4;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton$4;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-static {v0}, Lcom/amazon/device/ads/NativeCloseButton;->access$400(Lcom/amazon/device/ads/NativeCloseButton;)V

    .line 259
    return-void
.end method
