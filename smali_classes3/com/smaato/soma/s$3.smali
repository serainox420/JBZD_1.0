.class Lcom/smaato/soma/s$3;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->getAdSettings()Lcom/smaato/soma/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Lcom/smaato/soma/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/s;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/smaato/soma/s$3;->a:Lcom/smaato/soma/s;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/smaato/soma/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smaato/soma/s$3;->a:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/b/c;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

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
    .line 241
    invoke-virtual {p0}, Lcom/smaato/soma/s$3;->a()Lcom/smaato/soma/d;

    move-result-object v0

    return-object v0
.end method
