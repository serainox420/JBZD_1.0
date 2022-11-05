.class public final Landroid/support/v7/media/o$b$a;
.super Landroid/support/v7/media/c$d;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/o$b;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/o$b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Landroid/support/v7/media/o$b$a;->a:Landroid/support/v7/media/o$b;

    invoke-direct {p0}, Landroid/support/v7/media/c$d;-><init>()V

    .line 716
    iput-object p2, p0, Landroid/support/v7/media/o$b$a;->b:Ljava/lang/Object;

    .line 717
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Landroid/support/v7/media/o$b$a;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/i$d;->a(Ljava/lang/Object;I)V

    .line 722
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v7/media/o$b$a;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/i$d;->b(Ljava/lang/Object;I)V

    .line 727
    return-void
.end method
