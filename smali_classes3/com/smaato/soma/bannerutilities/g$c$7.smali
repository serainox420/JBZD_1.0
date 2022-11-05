.class Lcom/smaato/soma/bannerutilities/g$c$7;
.super Ljava/lang/Object;
.source "VideoChrome.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smaato/soma/bannerutilities/g$c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c$7;->b:Lcom/smaato/soma/bannerutilities/g$c;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/g$c$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$7$1;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/bannerutilities/g$c$7$1;-><init>(Lcom/smaato/soma/bannerutilities/g$c$7;Landroid/view/MotionEvent;)V

    .line 251
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c$7$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 236
    return v0
.end method
