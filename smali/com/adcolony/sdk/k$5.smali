.class Lcom/adcolony/sdk/k$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog$Builder;

.field final synthetic b:Lcom/adcolony/sdk/k;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/k;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/adcolony/sdk/k$5;->b:Lcom/adcolony/sdk/k;

    iput-object p2, p0, Lcom/adcolony/sdk/k$5;->a:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/k$5;->b:Lcom/adcolony/sdk/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/k;->c:Z

    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/k$5;->b:Lcom/adcolony/sdk/k;

    iget-object v1, p0, Lcom/adcolony/sdk/k$5;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    .line 119
    return-void
.end method
