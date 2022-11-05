.class Lcom/smaato/soma/bannerutilities/g$c$6;
.super Ljava/lang/Object;
.source "VideoChrome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 213
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c$6;->b:Lcom/smaato/soma/bannerutilities/g$c;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/g$c$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$6$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$c$6$1;-><init>(Lcom/smaato/soma/bannerutilities/g$c$6;)V

    .line 229
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c$6$1;->c()Ljava/lang/Object;

    .line 230
    return-void
.end method
