.class Lcom/smaato/soma/internal/connector/OrmmaBridge$13;
.super Lcom/smaato/soma/l;
.source "OrmmaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge;->open(Ljava/lang/String;ZZZ)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smaato/soma/internal/connector/OrmmaBridge;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iput-object p2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;->a:Ljava/lang/String;

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
    .line 294
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;->b:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->redirectPage(Ljava/lang/String;)V

    .line 295
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
    .line 291
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
