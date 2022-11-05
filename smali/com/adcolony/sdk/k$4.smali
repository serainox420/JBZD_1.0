.class Lcom/adcolony/sdk/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/k;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/k;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adcolony/sdk/k$4;->a:Lcom/adcolony/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adcolony/sdk/k$4;->a:Lcom/adcolony/sdk/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    .line 107
    iget-object v0, p0, Lcom/adcolony/sdk/k$4;->a:Lcom/adcolony/sdk/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/k;->c:Z

    .line 108
    return-void
.end method
