.class public interface abstract Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;
.super Ljava/lang/Object;
.source "ViewDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Landroid/view/View;",
        "DATA:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getData(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVIEW;)TDATA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/ConversionException;
        }
    .end annotation
.end method
