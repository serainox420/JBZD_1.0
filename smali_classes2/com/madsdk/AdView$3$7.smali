.class Lcom/madsdk/AdView$3$7;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView$3;->createCalendarEvent(Lcom/madsdk/CalendarEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madsdk/AdView$3;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView$3;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/madsdk/AdView$3$7;->this$1:Lcom/madsdk/AdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/madsdk/AdView$3$7;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    const-string v1, "javascript: mraid.fireEvent(\'error\', \'Calendar event is not added\', \'createCalendarEvent\');"

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 353
    return-void
.end method
