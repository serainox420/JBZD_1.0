.class Lcom/adcolony/sdk/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/b;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/b;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adcolony/sdk/b$1;->a:Lcom/adcolony/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adcolony/sdk/b$1;->a:Lcom/adcolony/sdk/b;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/b;->a(Lcom/adcolony/sdk/z;)V

    .line 110
    return-void
.end method
