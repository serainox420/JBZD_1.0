.class Lcom/smaato/soma/video/VASTAdActivity$5$1;
.super Lcom/smaato/soma/l;
.source "VASTAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/VASTAdActivity$5;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity$5;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$5$1;->a:Lcom/smaato/soma/video/VASTAdActivity$5;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$5$1;->a:Lcom/smaato/soma/video/VASTAdActivity$5;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity$5;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->finish()V

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity$5$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
