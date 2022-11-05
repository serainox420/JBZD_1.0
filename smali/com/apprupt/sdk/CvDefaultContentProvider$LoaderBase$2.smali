.class Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$2;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Lcom/apprupt/sdk/URLRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$2;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$2;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    .line 97
    return-void
.end method
