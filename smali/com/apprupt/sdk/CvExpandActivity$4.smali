.class Lcom/apprupt/sdk/CvExpandActivity$4;
.super Ljava/lang/Object;
.source "CvExpandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvExpandActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvExpandActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvExpandActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/apprupt/sdk/CvExpandActivity$4;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$4;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvExpandActivity;->finish()V

    .line 200
    return-void
.end method
