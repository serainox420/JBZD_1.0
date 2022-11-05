.class Lcom/millennialmedia/internal/video/LightboxView$3;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

.field final synthetic b:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$3;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$3;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$3;->a:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    .line 220
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 222
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 223
    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$3$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$3$1;-><init>(Lcom/millennialmedia/internal/video/LightboxView$3;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    :cond_0
    return-void
.end method
