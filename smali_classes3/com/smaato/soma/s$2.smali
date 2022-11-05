.class Lcom/smaato/soma/s$2;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->setBannerStateListener(Lcom/smaato/soma/g;)V
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
.field final synthetic a:Lcom/smaato/soma/g;

.field final synthetic b:Lcom/smaato/soma/s;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s;Lcom/smaato/soma/g;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/smaato/soma/s$2;->b:Lcom/smaato/soma/s;

    iput-object p2, p0, Lcom/smaato/soma/s$2;->a:Lcom/smaato/soma/g;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/smaato/soma/s$2;->b:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/s$2;->a:Lcom/smaato/soma/g;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/c;->setBannerStateListener(Lcom/smaato/soma/g;)V

    .line 232
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
    .line 228
    invoke-virtual {p0}, Lcom/smaato/soma/s$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
