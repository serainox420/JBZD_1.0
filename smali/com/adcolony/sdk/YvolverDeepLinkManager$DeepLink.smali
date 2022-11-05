.class public Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeepLink"
.end annotation


# instance fields
.field a:Landroid/net/Uri;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field final synthetic d:Lcom/adcolony/sdk/YvolverDeepLinkManager;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Landroid/net/Uri;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->d:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->a:Landroid/net/Uri;

    .line 210
    iput-object p3, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    .line 211
    iput-boolean p4, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->c:Z

    .line 212
    return-void
.end method
