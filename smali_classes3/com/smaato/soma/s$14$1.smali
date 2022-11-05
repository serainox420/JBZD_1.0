.class Lcom/smaato/soma/s$14$1;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s$14;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/smaato/soma/s$14;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s$14;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/smaato/soma/s$14$1;->a:Lcom/smaato/soma/s$14;

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
    .line 97
    iget-object v0, p0, Lcom/smaato/soma/s$14$1;->a:Lcom/smaato/soma/s$14;

    iget-object v0, v0, Lcom/smaato/soma/s$14;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0}, Lcom/smaato/soma/s;->b()V

    .line 98
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
    .line 94
    invoke-virtual {p0}, Lcom/smaato/soma/s$14$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
