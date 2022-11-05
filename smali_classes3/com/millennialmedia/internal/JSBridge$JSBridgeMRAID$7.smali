.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->createCalendarEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    const-string v1, "createCalendarEvent"

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public onUIDisplayed()V
    .locals 2

    .prologue
    .line 827
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calendar activity started"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void
.end method
