.class Lcom/millennialmedia/internal/adcontrollers/WebController$8;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$8;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$8;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->shutdown()V

    .line 565
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$8;->a:Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->a(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    .line 567
    :cond_0
    return-void
.end method
