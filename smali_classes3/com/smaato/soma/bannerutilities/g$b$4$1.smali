.class Lcom/smaato/soma/bannerutilities/g$b$4$1;
.super Ljava/lang/Object;
.source "VideoChrome.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$b$4;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g$b$4;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$b$4;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b$4$1;->a:Lcom/smaato/soma/bannerutilities/g$b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;-><init>(Lcom/smaato/soma/bannerutilities/g$b$4$1;Landroid/view/View;ILandroid/view/KeyEvent;)V

    .line 421
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$b$4$1$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 404
    return v0
.end method
