.class Lcom/adcolony/sdk/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/k;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/k;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adcolony/sdk/k$3;->b:Lcom/adcolony/sdk/k;

    iput-object p2, p0, Lcom/adcolony/sdk/k$3;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/adcolony/sdk/k$3;->b:Lcom/adcolony/sdk/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    .line 85
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string v1, "positive"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 90
    iget-object v1, p0, Lcom/adcolony/sdk/k$3;->b:Lcom/adcolony/sdk/k;

    iput-boolean v2, v1, Lcom/adcolony/sdk/k;->c:Z

    .line 92
    iget-object v1, p0, Lcom/adcolony/sdk/k$3;->a:Lcom/adcolony/sdk/z;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 93
    return-void
.end method
