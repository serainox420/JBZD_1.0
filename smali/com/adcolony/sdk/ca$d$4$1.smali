.class Lcom/adcolony/sdk/ca$d$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d$4;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d$4;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$4$1;->a:Lcom/adcolony/sdk/ca$d$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->d:Lcom/adcolony/sdk/cm$a;

    .line 345
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 346
    return-void
.end method
