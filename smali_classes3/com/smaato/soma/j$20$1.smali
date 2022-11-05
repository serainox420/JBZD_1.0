.class Lcom/smaato/soma/j$20$1;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j$20;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/j$20;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j$20;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/smaato/soma/j$20$1;->a:Lcom/smaato/soma/j$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/smaato/soma/j$20$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$20$1$1;-><init>(Lcom/smaato/soma/j$20$1;)V

    .line 344
    invoke-virtual {v0}, Lcom/smaato/soma/j$20$1$1;->c()Ljava/lang/Object;

    .line 345
    return-void
.end method
