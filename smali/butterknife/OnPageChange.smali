.class public interface abstract annotation Lbutterknife/OnPageChange;
.super Ljava/lang/Object;
.source "OnPageChange.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/OnPageChange$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
