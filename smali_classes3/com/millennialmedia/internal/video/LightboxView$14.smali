.class Lcom/millennialmedia/internal/video/LightboxView$14;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;

    .line 1132
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1134
    invoke-static {}, Lcom/millennialmedia/internal/video/LightboxView;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing tracking url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_1
    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 1139
    :cond_2
    return-void
.end method
