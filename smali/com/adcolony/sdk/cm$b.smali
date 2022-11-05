.class Lcom/adcolony/sdk/cm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/cm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cm;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cm;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/adcolony/sdk/cm$b;->a:Lcom/adcolony/sdk/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/adcolony/sdk/bk;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 160
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
