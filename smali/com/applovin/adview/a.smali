.class Lcom/applovin/adview/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinConfirmationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/a;->a:Lcom/applovin/adview/AppLovinConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/adview/a;->a:Lcom/applovin/adview/AppLovinConfirmationActivity;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinConfirmationActivity;->finish()V

    return-void
.end method
