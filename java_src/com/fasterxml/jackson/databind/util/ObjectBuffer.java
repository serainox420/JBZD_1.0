package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.List;
/* loaded from: classes.dex */
public final class ObjectBuffer {
    private static final int MAX_CHUNK = 262144;
    private static final int SMALL_CHUNK = 16384;
    private Object[] _freeBuffer;
    private LinkedNode<Object[]> _head;
    private int _size;
    private LinkedNode<Object[]> _tail;

    public Object[] resetAndStart() {
        _reset();
        return this._freeBuffer == null ? new Object[12] : this._freeBuffer;
    }

    public Object[] appendCompletedChunk(Object[] objArr) {
        LinkedNode<Object[]> linkedNode = new LinkedNode<>(objArr, null);
        if (this._head == null) {
            this._tail = linkedNode;
            this._head = linkedNode;
        } else {
            this._tail.linkNext(linkedNode);
            this._tail = linkedNode;
        }
        int length = objArr.length;
        this._size += length;
        if (length < SMALL_CHUNK) {
            length += length;
        } else if (length < MAX_CHUNK) {
            length += length >> 2;
        }
        return new Object[length];
    }

    public Object[] completeAndClearBuffer(Object[] objArr, int i) {
        int i2 = this._size + i;
        Object[] objArr2 = new Object[i2];
        _copyTo(objArr2, i2, objArr, i);
        return objArr2;
    }

    public <T> T[] completeAndClearBuffer(Object[] objArr, int i, Class<T> cls) {
        int i2 = i + this._size;
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i2));
        _copyTo(tArr, i2, objArr, i);
        _reset();
        return tArr;
    }

    public void completeAndClearBuffer(Object[] objArr, int i, List<Object> list) {
        for (LinkedNode<Object[]> linkedNode = this._head; linkedNode != null; linkedNode = linkedNode.next()) {
            for (Object obj : linkedNode.value()) {
                list.add(obj);
            }
        }
        for (int i2 = 0; i2 < i; i2++) {
            list.add(objArr[i2]);
        }
    }

    public int initialCapacity() {
        if (this._freeBuffer == null) {
            return 0;
        }
        return this._freeBuffer.length;
    }

    public int bufferedSize() {
        return this._size;
    }

    protected void _reset() {
        if (this._tail != null) {
            this._freeBuffer = this._tail.value();
        }
        this._tail = null;
        this._head = null;
        this._size = 0;
    }

    protected final void _copyTo(Object obj, int i, Object[] objArr, int i2) {
        int i3 = 0;
        for (LinkedNode<Object[]> linkedNode = this._head; linkedNode != null; linkedNode = linkedNode.next()) {
            Object[] value = linkedNode.value();
            int length = value.length;
            System.arraycopy(value, 0, obj, i3, length);
            i3 += length;
        }
        System.arraycopy(objArr, 0, obj, i3, i2);
        int i4 = i3 + i2;
        if (i4 != i) {
            throw new IllegalStateException("Should have gotten " + i + " entries, got " + i4);
        }
    }
}
