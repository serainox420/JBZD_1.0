.class Lcom/smaato/soma/s$16;
.super Lcom/smaato/soma/l;
.source "ToasterBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->setLocationUpdateEnabled(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/smaato/soma/s;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s;Z)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/smaato/soma/s$16;->b:Lcom/smaato/soma/s;

    iput-boolean p2, p0, Lcom/smaato/soma/s$16;->a:Z

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
    .line 167
    iget-object v0, p0, Lcom/smaato/soma/s$16;->b:Lcom/smaato/soma/s;

    invoke-static {v0}, Lcom/smaato/soma/s;->b(Lcom/smaato/soma/s;)Lcom/smaato/soma/b/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smaato/soma/s$16;->a:Z

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/c;->setLocationUpdateEnabled(Z)V

    .line 168
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
    .line 164
    invoke-virtual {p0}, Lcom/smaato/soma/s$16;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
