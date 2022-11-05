.class Lcom/applovin/impl/adview/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/x;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ac;->a:Lcom/applovin/impl/adview/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ac;->a:Lcom/applovin/impl/adview/x;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/x;->dismiss()V

    return-void
.end method
