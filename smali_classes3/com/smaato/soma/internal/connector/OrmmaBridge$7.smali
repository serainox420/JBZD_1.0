.class Lcom/smaato/soma/internal/connector/OrmmaBridge$7;
.super Lcom/smaato/soma/l;
.source "OrmmaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/connector/OrmmaBridge;->reportViolation(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/measurements/FraudesType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/smaato/soma/internal/connector/OrmmaBridge;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->c:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iput-object p2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->a:Lcom/smaato/soma/measurements/FraudesType;

    iput-object p3, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->c:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->a:Lcom/smaato/soma/measurements/FraudesType;

    iget-object v2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->c:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    iget-object v4, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->c:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-static {v4}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->getURLTraces(Landroid/webkit/WebView;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;Ljava/util/List;)V

    .line 686
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 680
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
