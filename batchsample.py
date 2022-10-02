import asyncio
import aio_eth
import time
import ujson


URL = "http://127.0.0.1:8545"




async def query_blocks():

    # create the API handle
    async with aio_eth.EthAioAPI(URL, max_tasks=7000) as api:

        # express queries - example: get all transactions from 70 blocks
        # starting from 10553978
        for i in range(10553978, 10553978 + 100):

            # submit tasks to the task list, if `current tasks > max_tasks`
            # this method throws an exception.
            api.push_task({
                "method": "eth_getBlockByNumber",
                "params": [
                    hex(i), True
                ]
            })
        

        st = time.time()
        # execute the tasks together concurrently, outputs are returned in the same
        # order in which their corresponding queries where submitted.
        result = await api.exec_tasks_async()
        et = time.time()
        print('time taken: ', et - st, ' seconds')
        print(result)

if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(query_blocks())