.class Lcom/applovin/impl/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ar;->a(Lcom/applovin/impl/sdk/ar;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ar;->b(Lcom/applovin/impl/sdk/ar;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bx;->K:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ar;->b(Lcom/applovin/impl/sdk/ar;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bx;->L:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ar;->b(Lcom/applovin/impl/sdk/ar;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bx;->M:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/at;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/at;-><init>(Lcom/applovin/impl/sdk/as;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ar;->b(Lcom/applovin/impl/sdk/ar;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bx;->N:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/aw;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/aw;-><init>(Lcom/applovin/impl/sdk/as;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
