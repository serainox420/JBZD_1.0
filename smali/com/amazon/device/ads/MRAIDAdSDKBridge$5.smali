.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 975
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "User chose not to store image."

    const-string v2, "storePicture"

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    return-void
.end method
