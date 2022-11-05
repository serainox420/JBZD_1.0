.class Lcom/millennialmedia/internal/AdPlacement$1;
.super Ljava/lang/Object;
.source "AdPlacement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacement;->a(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

.field final synthetic b:Lcom/millennialmedia/XIncentivizedEventListener;

.field final synthetic c:Lcom/millennialmedia/internal/AdPlacement;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;Lcom/millennialmedia/XIncentivizedEventListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$1;->c:Lcom/millennialmedia/internal/AdPlacement;

    iput-object p2, p0, Lcom/millennialmedia/internal/AdPlacement$1;->a:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    iput-object p3, p0, Lcom/millennialmedia/internal/AdPlacement$1;->b:Lcom/millennialmedia/XIncentivizedEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "IncentiveVideoComplete"

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$1;->a:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    iget-object v1, v1, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$1;->b:Lcom/millennialmedia/XIncentivizedEventListener;

    invoke-interface {v0}, Lcom/millennialmedia/XIncentivizedEventListener;->onVideoComplete()Z

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$1;->b:Lcom/millennialmedia/XIncentivizedEventListener;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$1;->a:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    invoke-interface {v0, v1}, Lcom/millennialmedia/XIncentivizedEventListener;->onCustomEvent(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)Z

    goto :goto_0
.end method
