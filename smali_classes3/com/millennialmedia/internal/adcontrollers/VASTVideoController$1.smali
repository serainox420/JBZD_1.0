.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAST content did not produce a valid InLineAd instance."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 104
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 149
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->impressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InLineAd must contain at least one Impression URL."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 113
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VAST XML Parsing error."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 141
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->d(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->d(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 120
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->impressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WrapperAd must contain at least one Impression URL."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 124
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VAST XML I/O error."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 147
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->c(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    goto/16 :goto_0

    .line 131
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->isVPAID(Lcom/millennialmedia/internal/video/VASTParser$InLineAd;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVPAIDWebView(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->c:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVASTVideoView(Landroid/content/Context;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
