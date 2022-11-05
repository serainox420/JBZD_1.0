.class Lcom/smaato/soma/video/VASTAdActivity$4;
.super Ljava/lang/Object;
.source "VASTAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/VASTAdActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$4;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$4$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$4$1;-><init>(Lcom/smaato/soma/video/VASTAdActivity$4;)V

    .line 348
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$4$1;->c()Ljava/lang/Object;

    .line 349
    return-void
.end method
