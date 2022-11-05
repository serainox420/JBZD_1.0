.class Lcom/adcolony/sdk/bi$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi$2;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi$2;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adcolony/sdk/bi$2$1;->a:Lcom/adcolony/sdk/bi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adcolony/sdk/bi$2$1;->a:Lcom/adcolony/sdk/bi$2;

    iget-object v0, v0, Lcom/adcolony/sdk/bi$2;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$2$1;->a:Lcom/adcolony/sdk/bi$2;

    iget-object v1, v1, Lcom/adcolony/sdk/bi$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/adcolony/sdk/bi$2$1;->a:Lcom/adcolony/sdk/bi$2;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi$2;->b()V

    .line 196
    return-void
.end method
