.class Lcom/madsdk/AdView$3$5;
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

.field final synthetic val$calendarEvent:Lcom/madsdk/CalendarEvent;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView$3;Lcom/madsdk/CalendarEvent;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/madsdk/AdView$3$5;->this$1:Lcom/madsdk/AdView$3;

    iput-object p2, p0, Lcom/madsdk/AdView$3$5;->val$calendarEvent:Lcom/madsdk/CalendarEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/madsdk/AdView$3$5;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: mraid.fireEvent(\'error\', \'Date is not parceble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/madsdk/AdView$3$5;->val$calendarEvent:Lcom/madsdk/CalendarEvent;

    iget-object v2, v2, Lcom/madsdk/CalendarEvent;->start:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'createCalendarEvent\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 320
    return-void
.end method
