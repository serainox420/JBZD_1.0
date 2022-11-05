.class Lcom/inmobi/re/controller/JSUtilityController$7;
.super Ljava/util/TimerTask;
.source "JSUtilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/controller/JSUtilityController;->vibrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/JSUtilityController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/controller/JSUtilityController;)V
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/inmobi/re/controller/JSUtilityController$7;->a:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1376
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$7;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->raiseVibrateCompleteEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :goto_0
    return-void

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Vibrate callback execption"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
