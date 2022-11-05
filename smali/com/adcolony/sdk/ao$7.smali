.class Lcom/adcolony/sdk/ao$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/adcolony/sdk/ao;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ao;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/adcolony/sdk/ao$7;->c:Lcom/adcolony/sdk/ao;

    iput-object p2, p0, Lcom/adcolony/sdk/ao$7;->a:Ljava/lang/String;

    iput p3, p0, Lcom/adcolony/sdk/ao$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 980
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adcolony/sdk/ao$7;->a:Ljava/lang/String;

    iget v2, p0, Lcom/adcolony/sdk/ao$7;->b:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 981
    return-void
.end method
