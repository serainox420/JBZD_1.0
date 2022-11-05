.class public Lbolts/i$a;
.super Lbolts/j;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbolts/j",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/i;


# direct methods
.method constructor <init>(Lbolts/i;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lbolts/i$a;->a:Lbolts/i;

    invoke-direct {p0}, Lbolts/j;-><init>()V

    .line 1024
    return-void
.end method
